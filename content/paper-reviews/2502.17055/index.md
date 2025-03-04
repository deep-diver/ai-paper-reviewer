---
title: "Stable-SPAM: How to Train in 4-Bit More Stably than 16-Bit Adam"
summary: "Stable-SPAM stabilizes 4-bit LLM training, outperforming Adam."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 University of Exeter",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.17055 {{< /keyword >}}
{{< keyword icon="writer" >}} Tianjin Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.17055" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.17055" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.17055/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Low-bit training is a key area for efficient Large Language Models (LLMs), yet it suffers from unstable gradient norms and high sensitivity to learning rates, causing divergence.** Existing optimizers like SPAM, while improving performance, still struggle with gradient stabilization, requiring careful tuning, especially in 4-bit training, limiting practical applications and widespread adoption.



This paper introduces Stable-SPAM, an optimizer that enhances gradient normalization and clipping. Stable-SPAM adaptively updates clipping thresholds, normalizes gradients based on historical statistics, and inherits momentum reset from SPAM. **The experiments show the effectiveness of Stable-SPAM in stabilizing gradient norms, delivering superior performance, and reducing training steps in 4-bit LLM training.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Low-bit precision amplifies sensitivity to learning rates. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Stable-SPAM effectively stabilizes gradient norms in 4-bit LLM training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Stable-SPAM outperforms Adam and SPAM in 4-bit LLM training, achieving better performance with fewer training steps. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Stable-SPAM, stabilizing 4-bit LLM training. **It outperforms Adam and SPAM, reducing training steps and improving performance.** It is crucial for researchers aiming for efficient, low-precision LLM training, opening avenues for exploration of stabilized optimization.

------
#### Visual Insights



![](https://arxiv.org/html/2502.17055/x1.png)

> 🔼 This figure displays the perplexity results of training 4-bit large language models (LLMs) using different optimizers.  The experiments were conducted on three sizes of the LLaMA model (130M, 350M, and 1B parameters) using the C4 dataset.  For comparison, results for training the same models with Adam using BF16 precision (16-bit) are also shown. Lower perplexity indicates better performance. The x-axis represents the number of training steps, and the y-axis shows perplexity.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance of 4-bit LLM training. Experiments are conducted with LLaMA-130M/350M/1B models on C4 Dataset. Adam-BF16 denotes that the model is trained with BF16 by Adam. Perplexity on validation set is reported.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.F5.fig1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.F5.fig1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.F5.fig1.1.1.1.1.1" rowspan="2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.F5.fig1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.1.1.2.1">INT4 Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.F5.fig1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.1.1.3.1">FP4 Training</span></th>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.1.1">130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.2.1">350M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.3.1">1B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.4.1">130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.5.1">350M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F5.fig1.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.2.2.6.1">1B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F5.fig1.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.F5.fig1.1.1.3.1.1">Adam</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.2">26.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.3">24.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.4">21.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.5">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.6">24.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.3.1.7">22.01</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F5.fig1.1.1.4.2.1">Adam+GradClip</th>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.2">26.30</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.3">21.64</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.4">19.74</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.5">28.27</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.6">20.84</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.4.2.7">20.25</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F5.fig1.1.1.5.3.1">Adafactor</th>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.2">25.11</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.3">20.45</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.4">20.65</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.5">26.89</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.6">20.53</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.5.3.7">20.03</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F5.fig1.1.1.6.4.1">SPAM</th>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.2">25.03</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.3">20.19</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.4">19.98</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.5">26.78</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.6">20.35</td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.6.4.7">19.74</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.7.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F5.fig1.1.1.7.5.1"><span class="ltx_text ltx_font_typewriter" id="S3.F5.fig1.1.1.7.5.1.1" style="background-color:#E6E6E6;">Stable-SPAM</span></th>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.2.1" style="background-color:#E6E6E6;">24.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.3.1" style="background-color:#E6E6E6;">17.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.4.1" style="background-color:#E6E6E6;">17.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.5"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.5.1" style="background-color:#E6E6E6;">26.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.6"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.6.1" style="background-color:#E6E6E6;">19.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.F5.fig1.1.1.7.5.7"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.7.5.7.1" style="background-color:#E6E6E6;">18.48</span></td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.F5.fig1.1.1.8.6.1">Adam (BF16)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.2">24.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.3">21.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.4">19.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.5">24.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.6">21.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F5.fig1.1.1.8.6.7">19.73</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.F5.fig1.1.1.9.7.1">Training Tokens</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="6" id="S3.F5.fig1.1.1.9.7.2">2.2B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of different optimizers when training LLaMA language models using INT4 (4-bit integer) and FP4 (4-bit floating-point) precision.  The models were trained on the C4 dataset, and the table shows the resulting evaluation loss (perplexity) for each optimizer and model size (130M, 350M, and 1B parameters).  This allows for a direct comparison of optimizer effectiveness at low-bit precision training.  The perplexity metric measures the model's uncertainty in predicting the next word in a sequence.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of various optimizers of INT4 and FP4 training of LLaMA models on C4444. Perplexity is reported.
> </details>





### In-depth insights


#### LLM 4-bit Training
LLM 4-bit training presents a pathway to **reducing computational and memory demands** of large language models, making them more accessible. However, this introduces unique challenges. Quantization to 4-bit precision **amplifies the sensitivity to learning rates**, leading to unstable gradient norms. The paper identifies that **gradient and loss spikes** are more frequent. Existing optimizers, struggle to maintain stability in this environment. Addressing these issues requires careful **calibration of hyperparameters** and novel techniques. The goal is to retain the performance of higher-precision training while capitalizing on the efficiency gains of 4-bit quantization, such as **reduced infrastructure costs and faster inference**.

#### Stable SPAM model
**Stable SPAM** focuses on addressing instability in low-precision training. Building upon the **SPAM** optimizer, it incorporates adaptive gradient normalization (AdaGN) and adaptive spike-aware clipping (AdaClip). **AdaGN** stabilizes gradients by adaptively scaling them based on historical 12-norm statistics, mitigating abrupt surges in gradient norms. **AdaClip** dynamically adjusts the clipping threshold for spiked gradients by tracking their historical maxima. Together, these techniques aim to stabilize training, particularly in 4-bit quantization settings, leading to improved performance and robustness compared to standard optimizers.

#### Gradient Stability
**Gradient stability** is a crucial aspect of training deep learning models, especially Large Language Models (LLMs). Unstable gradients, characterized by spikes or vanishing norms, can lead to divergence or slow convergence. **Low-precision training**, like 4-bit quantization, exacerbates these issues by amplifying the sensitivity to learning rates and creating unstable gradient norms. Techniques like gradient clipping and normalization are used to mitigate these instabilities. Effective strategies involve adaptively adjusting clipping thresholds based on historical gradient data and normalizing the entire gradient matrix. Momentum reset can also help by mitigating the accumulation of spiked gradients, leading to more stable and consistent training.

#### Low-Precision LLM
**Low-precision LLM training is emerging as a pivotal approach** for enhancing computational and memory efficiency, impacting deployment feasibility. **FP16 and BF16 formats have been the standard**, with a growing interest in 8-bit training via LM-FP8. Activation outliers pose representation challenges, especially in scaling beyond 250B tokens; smoothing and Hadamard transformations aim to mitigate this. **Data format choice impacts performance; INT8 is widely supported, while NVIDIA's Hopper GPUs specialize in FP8**. MX format offers superior representation but lacks hardware support. **Research focuses on training instability, proposing optimizer designs to stabilize low-precision training**, thus improving its stability with complementary techniques.

#### Stabilizing LLMs
Stabilizing Large Language Models (LLMs) is a pivotal area, given the inherent training instability that often plagues these models. The research paper addresses these concerns through innovative optimization techniques. The techniques are **adaptive gradient normalization (AdaGN) and adaptive spike-aware clipping (AdaClip)**. These mechanisms are intended to smooth out the training process by mitigating the adverse effects of gradient explosions and loss spikes. These spikes are very detrimental to training LLMs. The paper underscores the significance of preprocessing gradients. The results demonstrate how judicious gradient management leads to more stable convergence and better overall model performance, ultimately contributing to the advancement and efficient training of very large language models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.17055/x2.png)

> 🔼 This figure displays the final validation loss achieved when training a LLaMA-130M language model on the C4 dataset using different learning rates. Each curve represents a different optimizer (Adam, Adafactor, Adam-mini, and SPAM).  The x-axis shows the learning rate used, and the y-axis shows the final validation loss. The vertical dotted lines indicate points where a learning rate caused the training loss to become NaN (Not a Number), signifying that the model training failed to converge and could not continue with that specific hyperparameter. The red horizontal dashed lines highlight the lowest validation loss obtained by each optimizer during the experiment, representing the best performance attainable under various learning rates.
> <details>
> <summary>read the caption</summary>
> Figure 2: Final validation loss when training LLaMA-130M on C4, sweeping across learning rates (LR). The vertical dotted line indicates that the model cannot be trained further as increasing the learning rate, i.e. Training loss becomes NaN. Red dashed horizontal lines indicate the best performance achieved.
> </details>



![](https://arxiv.org/html/2502.17055/x3.png)

> 🔼 This figure demonstrates the impact of SpikeClip, a technique from the SPAM optimizer, on stabilizing the training process of a 4-bit LLM. The left panel displays gradient norms before and after applying SpikeClip, revealing its effectiveness in mitigating the abrupt increases or spikes in the gradients. The right panel shows the training loss curves with and without SpikeClip, further showcasing the stabilization effect, leading to a smoother training process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Effect of SpikeClip (Huang et al., 2025) on stabilizing training. Left: gradient norms before and after performing gradient spike clip. Right: training loss with and without gradient spike clip. Models are trained by Adam optimizer based on LLaMA-130M and C4.
> </details>



![](https://arxiv.org/html/2502.17055/x4.png)

> 🔼 This figure displays the training loss and gradient norm of the Adam optimizer under different learning rates, using both BF16 (16-bit floating-point) and FP4 (4-bit floating-point) precision. The experiments were performed using the LLaMA-130M and LLaMA-350M language models, maintaining consistent training configurations across all experiments. This visualization helps understand the impact of different precision levels and learning rates on the stability and performance of training large language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training loss and gradient norm of Adam using various learning rates with BF16 and FP4 precision. Experiments are conducted under the same training configuration with LLaMA-130M/350M.
> </details>



![](https://arxiv.org/html/2502.17055/x5.png)

> 🔼 This figure compares the performance of Stable-SPAM against Adam under extremely low-precision training settings (INT2, INT3, INT4).  The experiments were conducted using 350M parameter LLaMA models trained on the C4 dataset.  The chart shows the final validation loss achieved by each optimizer under various bit-width configurations.  It demonstrates Stable-SPAM's ability to maintain competitive performance, even surpassing the performance of Adam trained with BF16 (higher precision) in the INT3 setting. This highlights the robustness of Stable-SPAM in handling extremely low-precision training scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: StableSPAM under Extremely Low-Precision Training. Experiments are conducted with 350M models on C4 Dataset. BF16-Adam denotes that the model is trained with BF16 by Adam. The final loss on validation set is reported.
> </details>



![](https://arxiv.org/html/2502.17055/x6.png)

> 🔼 This figure displays the performance of training large language models (LLMs) using the BF16 (Brain Floating Point 16-bit) precision format.  It compares the performance of different LLaMA model sizes (60M, 130M, 350M, and 1B parameters) trained on the C4 dataset. The x-axis represents the number of update steps during training, and the y-axis shows the perplexity, a measure of how well the model predicts the next word in a sequence.  The different colored lines represent different optimizers used, allowing for a comparison of their effectiveness across various model sizes in the context of BF16 training.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance of BF16 training with various model sizes. Experiments are based on LLaMA models trained on C4 Dataset.
> </details>



![](https://arxiv.org/html/2502.17055/x7.png)

> 🔼 This figure shows the effects of AdaGN and AdaClip on the stability of 4-bit LLM training using the FP4 precision.  The left two subfigures display the training loss and gradient norm for a LLaMA-130M model trained with a learning rate of 3e-3, comparing Adam alone, Adam with AdaGN, Adam with both AdaGN and AdaClip, and Stable-SPAM. The right two subfigures show the final evaluation loss for LLaMA-60M trained using various learning rates (1e-3, 3e-3, and 5e-3) with four different training methods:  Adam, Adam + AdaGN, Adam + AdaGN + AdaClip and Stable-SPAM.  It demonstrates how AdaGN and AdaClip work together to stabilize the training process, reducing loss spikes and gradient norm explosions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effect of AdaGN and AdaClip on stabilizing FP4 LLM training. The left two figures use LLaMA-130M (LR = 3e-3), and the right two figures use LLaMA-60M.
> </details>



![](https://arxiv.org/html/2502.17055/x8.png)

> 🔼 This figure shows the results of a hyperparameter analysis for Stable-SPAM optimizer.  The experiments were performed using 4-bit (FP4) precision training on the LLaMA-60M model with the C4 dataset (1.1B tokens). The x-axis of each subplot represents different values for one of the four hyperparameters (γ1, γ2, γ3, ΔT), while the y-axis shows the resulting perplexity. This analysis aims to find the optimal values for these hyperparameters to achieve the best performance and stability in 4-bit training.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Hyper-parameter Analysis. Experiments are conducted with FP4 training on LLaMA-60M and C4 with 1.1B tokens.
> </details>



![](https://arxiv.org/html/2502.17055/x9.png)

> 🔼 Figure 9 illustrates the performance of three optimizers (Adam, SPAM, and Stable-SPAM) on a time series forecasting task using the PatchTST model.  The key aspect highlighted is the robustness of the optimizers to anomalous data.  To simulate real-world scenarios where data might be corrupted or contain outliers, Gaussian noise was added to 10% of randomly selected data points. The severity of this noise was controlled by a 'Severity' parameter, which scales the magnitude of the added noise relative to the maximum value in the original data.  The plot shows the test loss over training epochs for each optimizer under different levels of data corruption (A=0%, A=5%, A=10%), demonstrating how Stable-SPAM consistently maintains lower test loss compared to Adam and SPAM, especially when dealing with higher levels of anomalous data.
> <details>
> <summary>read the caption</summary>
> Figure 9: Test Loss during Training Process on Weather Time-series Data. Anomalous data is generated by adding Gaussian noise to 10% of randomly selected input values. Specifically, the anomalies data are conducted with X=X+Gaussin⁢(0,Severity∗Max⁢(X))𝑋𝑋Gaussin0SeverityMax𝑋X=X+\texttt{Gaussin}(0,\texttt{Severity}*\texttt{Max}(X))italic_X = italic_X + Gaussin ( 0 , Severity ∗ Max ( italic_X ) ) where X𝑋Xitalic_X is the inputs.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1.1">Optimizer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.2.1">60M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.3.1">130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.4.1">350M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.5.1">1B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.2.1.1">Adam-mini</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.2">34.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.3">24.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.4">19.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.5">16.07</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.3.2.1">Adam</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.2">34.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.3">24.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.4">18.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.5">16.13</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.4.3.1">Adam + GradClip</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.2">33.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.3">24.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.4">18.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.5">15.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.5.4.1">Adafactor</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.2">32.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.3">23.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.4">17.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.5">15.19</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.6.5.1">SPAM</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.2">30.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.3">23.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.4">17.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.5">14.66</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.6" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.7.6.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.3.1.7.6.1.1" style="background-color:#F2F2F2;">Stable-SPAM</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.2.1" style="background-color:#F2F2F2;">28.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.3.1" style="background-color:#F2F2F2;">22.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.4.1" style="background-color:#F2F2F2;">16.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.5.1" style="background-color:#F2F2F2;">13.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.3.1.8.7.1">Training Tokens</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.8.7.2">1.1B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.8.7.3">2.2B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.8.7.4">6.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.3.1.8.7.5">11.6B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different optimizers' performance during the training of LLAMA models using BF16 precision.  It shows the perplexity scores achieved by each optimizer across various LLAMA model sizes (60M, 130M, 350M, and 1B parameters).  The perplexity metric measures the model's ability to predict the next word in a sequence, with lower scores indicating better performance. The table helps to illustrate the relative performance of different optimization algorithms and the effect of model size on their effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison among various optimizers on BF16 training. Perplexity is reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.3.1.1.1.1.1">Optimizers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.2.1">INT4 Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.3.1">FP4 Training</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.1.1">60M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.2.1">130M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.3.1">60M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.4.1">130M</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.1.3.1.1">Lion</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1.2">39.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1.3">35.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1.4">39.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1.5">34.20</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.4.2.1"><span class="ltx_text" id="S4.T3.3.1.4.2.1.1" style="background-color:#F2F2F2;">Lion+<span class="ltx_text ltx_font_typewriter" id="S4.T3.3.1.4.2.1.1.1">AdaGN</span>+<span class="ltx_text ltx_font_typewriter" id="S4.T3.3.1.4.2.1.1.2">AdaClip</span></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.2.2.1" style="background-color:#F2F2F2;">38.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.2.3.1" style="background-color:#F2F2F2;">29.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.2.4.1" style="background-color:#F2F2F2;">36.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.2.5.1" style="background-color:#F2F2F2;">31.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.5.3.1">Adam-mini</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.3.2">34.84</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.3.3">29.79</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.3.4">36.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.3.5">32.95</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6.4" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.6.4.1"><span class="ltx_text" id="S4.T3.3.1.6.4.1.1" style="background-color:#F2F2F2;">Adam-mini+<span class="ltx_text ltx_font_typewriter" id="S4.T3.3.1.6.4.1.1.1">AdaGN</span>+<span class="ltx_text ltx_font_typewriter" id="S4.T3.3.1.6.4.1.1.2">AdaClip</span></span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.4.2.1" style="background-color:#F2F2F2;">34.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.4.3.1" style="background-color:#F2F2F2;">29.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.4.4.1" style="background-color:#F2F2F2;">34.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.4.5.1" style="background-color:#F2F2F2;">32.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.3.1.7.5.1">Training Tokens</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="4" id="S4.T3.3.1.7.5.2">1.1B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of integrating Adaptive Gradient Norm (AdaGN) and Adaptive Spike-Aware Clipping (AdaClip) into two optimizers: Lion and Adam-mini.  The experiments were performed on two different sizes of the LLaMA language model (60M and 130M parameters) using 4-bit training. The table shows the performance (likely measured by perplexity or loss) achieved by each optimizer with and without the addition of AdaGN and AdaClip, demonstrating their effect on model performance under low-bit precision training.
> <details>
> <summary>read the caption</summary>
> Table 3: Performence of AdaGN and AdaClip on Lion and Adam-mini optimizers. Experiments are based on LLaMA-60M/130M with 4-Bit training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.1">Optimizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.1.1.1.2">FP4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.1.1.1.3">BF16</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.3.1.2.2.1">Adam</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.1.2.2.2">35.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.1.2.2.3">34.09</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.3.3">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.3.3.1">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.3.3.1.1">MoRet</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.3.3.2">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.3.3.3">31.47</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.4.4.1">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.4.4.1.1">MoRet</span> + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.4.4.1.2">AdaClip</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.4.4.2">31.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.4.4.3">30.29</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.5.5">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.5.5.1">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.5.5.1.1">MoRet</span> + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.5.5.1.2">AdaGN</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.5.5.2">32.26</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.5.5.3">28.96</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.6.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.6.6.1"><span class="ltx_text" id="S4.T4.3.1.6.6.1.1" style="background-color:#F2F2F2;">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.6.6.1.1.1">MoRet</span> + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.6.6.1.1.2">AdaGN</span> + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.6.6.1.1.3">AdaClip</span> (<span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S4.T4.3.1.6.6.1.1.4">Stable-SPAM</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.6.6.2.1" style="background-color:#F2F2F2;">31.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.6.6.3.1" style="background-color:#F2F2F2;">28.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.3.1.7.7.1">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.7.7.1.1">MoRet</span>+<span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.7.7.1.2">AdaGN</span>+<span class="ltx_text" id="S4.T4.3.1.7.7.1.3" style="color:#0000FF;">SpikeClip</span> <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.17055v1#bib.bib8" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.1.7.7.2">32.01</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.1.7.7.3">28.90</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.8.8">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.8.8.1">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.8.8.1.1">MoRet</span>+ <span class="ltx_text" id="S4.T4.3.1.8.8.1.2" style="color:#0000FF;">GradClip</span> <cite class="ltx_cite ltx_citemacro_citep">(Goodfellow, <a class="ltx_ref" href="https://arxiv.org/html/2502.17055v1#bib.bib7" title="">2016</a>)</cite>+<span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.8.8.1.3">AdaClip</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.8.8.2">31.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.8.8.3">29.87</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.9.9" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S4.T4.3.1.9.9.1"><span class="ltx_text" id="S4.T4.3.1.9.9.1.1" style="background-color:#F2F2F2;">Adam + <span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.9.9.1.1.1">MoRet</span>+<span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.9.9.1.1.2">AdaGN</span>+<span class="ltx_text ltx_font_typewriter" id="S4.T4.3.1.9.9.1.1.3">AdaClip</span> (<span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S4.T4.3.1.9.9.1.1.4">Stable-SPAM</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.9.9.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.9.9.2.1" style="background-color:#F2F2F2;">31.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.1.9.9.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.9.9.3.1" style="background-color:#F2F2F2;">28.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.3.1.10.10.1">Training Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="2" id="S4.T4.3.1.10.10.2">1.1B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the individual and combined effects of the three main components of the Stable-SPAM optimizer: momentum reset (MoRet), adaptive gradient norm (AdaGN), and adaptive spike-aware clipping (AdaClip).  The study uses the LLaMA-60M model trained on the C4 dataset.  It compares the performance of Adam with different combinations of these components, as well as variations replacing AdaClip with SpikeClip and AdaGN with GradClip, to isolate the contributions of each component and demonstrate the effectiveness of the proposed Stable-SPAM approach.  The results are reported in terms of perplexity.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations on Stable-SPAM. Experiments are based on LLaMA-60M and C4.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.20.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.20.20.21.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.20.20.21.1.1"><span class="ltx_text" id="A1.T5.20.20.21.1.1.1" style="font-size:90%;">Params</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.20.20.21.1.2"><span class="ltx_text" id="A1.T5.20.20.21.1.2.1" style="font-size:90%;">Hidden</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.20.20.21.1.3"><span class="ltx_text" id="A1.T5.20.20.21.1.3.1" style="font-size:90%;">Intermediate</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.20.20.21.1.4"><span class="ltx_text" id="A1.T5.20.20.21.1.4.1" style="font-size:90%;">Heads</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.20.20.21.1.5"><span class="ltx_text" id="A1.T5.20.20.21.1.5.1" style="font-size:90%;">Layers</span></th>
<td class="ltx_td ltx_border_tt" id="A1.T5.20.20.21.1.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.1.1">
<math alttext="60" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mn id="A1.T5.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T5.1.1.1.1.m1.1.1.cmml">60</mn><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><cn id="A1.T5.1.1.1.1.m1.1.1.cmml" type="integer" xref="A1.T5.1.1.1.1.m1.1.1">60</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">60</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">60</annotation></semantics></math><span class="ltx_text" id="A1.T5.1.1.1.1.1" style="font-size:90%;">M</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.2"><math alttext="512" class="ltx_Math" display="inline" id="A1.T5.2.2.2.2.m1.1"><semantics id="A1.T5.2.2.2.2.m1.1a"><mn id="A1.T5.2.2.2.2.m1.1.1" mathsize="90%" xref="A1.T5.2.2.2.2.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.2.m1.1b"><cn id="A1.T5.2.2.2.2.m1.1.1.cmml" type="integer" xref="A1.T5.2.2.2.2.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.2.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.2.m1.1d">512</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.3.3.3"><math alttext="1376" class="ltx_Math" display="inline" id="A1.T5.3.3.3.3.m1.1"><semantics id="A1.T5.3.3.3.3.m1.1a"><mn id="A1.T5.3.3.3.3.m1.1.1" mathsize="90%" xref="A1.T5.3.3.3.3.m1.1.1.cmml">1376</mn><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.3.m1.1b"><cn id="A1.T5.3.3.3.3.m1.1.1.cmml" type="integer" xref="A1.T5.3.3.3.3.m1.1.1">1376</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.3.m1.1c">1376</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.3.m1.1d">1376</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.4.4.4"><math alttext="8" class="ltx_Math" display="inline" id="A1.T5.4.4.4.4.m1.1"><semantics id="A1.T5.4.4.4.4.m1.1a"><mn id="A1.T5.4.4.4.4.m1.1.1" mathsize="90%" xref="A1.T5.4.4.4.4.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.4.m1.1b"><cn id="A1.T5.4.4.4.4.m1.1.1.cmml" type="integer" xref="A1.T5.4.4.4.4.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.4.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.4.m1.1d">8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.5.5"><math alttext="8" class="ltx_Math" display="inline" id="A1.T5.5.5.5.5.m1.1"><semantics id="A1.T5.5.5.5.5.m1.1a"><mn id="A1.T5.5.5.5.5.m1.1.1" mathsize="90%" xref="A1.T5.5.5.5.5.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.5.m1.1b"><cn id="A1.T5.5.5.5.5.m1.1.1.cmml" type="integer" xref="A1.T5.5.5.5.5.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.5.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.5.m1.1d">8</annotation></semantics></math></td>
<td class="ltx_td ltx_border_t" id="A1.T5.5.5.5.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.10">
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.6.1">
<math alttext="130" class="ltx_Math" display="inline" id="A1.T5.6.6.6.1.m1.1"><semantics id="A1.T5.6.6.6.1.m1.1a"><mn id="A1.T5.6.6.6.1.m1.1.1" mathsize="90%" xref="A1.T5.6.6.6.1.m1.1.1.cmml">130</mn><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.1.m1.1b"><cn id="A1.T5.6.6.6.1.m1.1.1.cmml" type="integer" xref="A1.T5.6.6.6.1.m1.1.1">130</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.1.m1.1c">130</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.1.m1.1d">130</annotation></semantics></math><span class="ltx_text" id="A1.T5.6.6.6.1.1" style="font-size:90%;">M</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.7.7.2"><math alttext="768" class="ltx_Math" display="inline" id="A1.T5.7.7.7.2.m1.1"><semantics id="A1.T5.7.7.7.2.m1.1a"><mn id="A1.T5.7.7.7.2.m1.1.1" mathsize="90%" xref="A1.T5.7.7.7.2.m1.1.1.cmml">768</mn><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.2.m1.1b"><cn id="A1.T5.7.7.7.2.m1.1.1.cmml" type="integer" xref="A1.T5.7.7.7.2.m1.1.1">768</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.2.m1.1c">768</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.2.m1.1d">768</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.8.3"><math alttext="2048" class="ltx_Math" display="inline" id="A1.T5.8.8.8.3.m1.1"><semantics id="A1.T5.8.8.8.3.m1.1a"><mn id="A1.T5.8.8.8.3.m1.1.1" mathsize="90%" xref="A1.T5.8.8.8.3.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.3.m1.1b"><cn id="A1.T5.8.8.8.3.m1.1.1.cmml" type="integer" xref="A1.T5.8.8.8.3.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.3.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.3.m1.1d">2048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.9.9.9.4"><math alttext="12" class="ltx_Math" display="inline" id="A1.T5.9.9.9.4.m1.1"><semantics id="A1.T5.9.9.9.4.m1.1a"><mn id="A1.T5.9.9.9.4.m1.1.1" mathsize="90%" xref="A1.T5.9.9.9.4.m1.1.1.cmml">12</mn><annotation-xml encoding="MathML-Content" id="A1.T5.9.9.9.4.m1.1b"><cn id="A1.T5.9.9.9.4.m1.1.1.cmml" type="integer" xref="A1.T5.9.9.9.4.m1.1.1">12</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.9.9.4.m1.1c">12</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.9.9.4.m1.1d">12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.10.5"><math alttext="12" class="ltx_Math" display="inline" id="A1.T5.10.10.10.5.m1.1"><semantics id="A1.T5.10.10.10.5.m1.1a"><mn id="A1.T5.10.10.10.5.m1.1.1" mathsize="90%" xref="A1.T5.10.10.10.5.m1.1.1.cmml">12</mn><annotation-xml encoding="MathML-Content" id="A1.T5.10.10.10.5.m1.1b"><cn id="A1.T5.10.10.10.5.m1.1.1.cmml" type="integer" xref="A1.T5.10.10.10.5.m1.1.1">12</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.10.10.5.m1.1c">12</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.10.10.5.m1.1d">12</annotation></semantics></math></td>
<td class="ltx_td" id="A1.T5.10.10.10.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.15.15.15">
<td class="ltx_td ltx_align_center" id="A1.T5.11.11.11.1">
<math alttext="350" class="ltx_Math" display="inline" id="A1.T5.11.11.11.1.m1.1"><semantics id="A1.T5.11.11.11.1.m1.1a"><mn id="A1.T5.11.11.11.1.m1.1.1" mathsize="90%" xref="A1.T5.11.11.11.1.m1.1.1.cmml">350</mn><annotation-xml encoding="MathML-Content" id="A1.T5.11.11.11.1.m1.1b"><cn id="A1.T5.11.11.11.1.m1.1.1.cmml" type="integer" xref="A1.T5.11.11.11.1.m1.1.1">350</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.11.11.11.1.m1.1c">350</annotation><annotation encoding="application/x-llamapun" id="A1.T5.11.11.11.1.m1.1d">350</annotation></semantics></math><span class="ltx_text" id="A1.T5.11.11.11.1.1" style="font-size:90%;">M</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.12.12.12.2"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.12.12.12.2.m1.1"><semantics id="A1.T5.12.12.12.2.m1.1a"><mn id="A1.T5.12.12.12.2.m1.1.1" mathsize="90%" xref="A1.T5.12.12.12.2.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.12.12.12.2.m1.1b"><cn id="A1.T5.12.12.12.2.m1.1.1.cmml" type="integer" xref="A1.T5.12.12.12.2.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.12.12.12.2.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.12.12.12.2.m1.1d">1024</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.13.13.13.3"><math alttext="2736" class="ltx_Math" display="inline" id="A1.T5.13.13.13.3.m1.1"><semantics id="A1.T5.13.13.13.3.m1.1a"><mn id="A1.T5.13.13.13.3.m1.1.1" mathsize="90%" xref="A1.T5.13.13.13.3.m1.1.1.cmml">2736</mn><annotation-xml encoding="MathML-Content" id="A1.T5.13.13.13.3.m1.1b"><cn id="A1.T5.13.13.13.3.m1.1.1.cmml" type="integer" xref="A1.T5.13.13.13.3.m1.1.1">2736</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.13.13.13.3.m1.1c">2736</annotation><annotation encoding="application/x-llamapun" id="A1.T5.13.13.13.3.m1.1d">2736</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.14.14.14.4"><math alttext="16" class="ltx_Math" display="inline" id="A1.T5.14.14.14.4.m1.1"><semantics id="A1.T5.14.14.14.4.m1.1a"><mn id="A1.T5.14.14.14.4.m1.1.1" mathsize="90%" xref="A1.T5.14.14.14.4.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T5.14.14.14.4.m1.1b"><cn id="A1.T5.14.14.14.4.m1.1.1.cmml" type="integer" xref="A1.T5.14.14.14.4.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.14.14.14.4.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T5.14.14.14.4.m1.1d">16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T5.15.15.15.5"><math alttext="24" class="ltx_Math" display="inline" id="A1.T5.15.15.15.5.m1.1"><semantics id="A1.T5.15.15.15.5.m1.1a"><mn id="A1.T5.15.15.15.5.m1.1.1" mathsize="90%" xref="A1.T5.15.15.15.5.m1.1.1.cmml">24</mn><annotation-xml encoding="MathML-Content" id="A1.T5.15.15.15.5.m1.1b"><cn id="A1.T5.15.15.15.5.m1.1.1.cmml" type="integer" xref="A1.T5.15.15.15.5.m1.1.1">24</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.15.15.15.5.m1.1c">24</annotation><annotation encoding="application/x-llamapun" id="A1.T5.15.15.15.5.m1.1d">24</annotation></semantics></math></td>
<td class="ltx_td" id="A1.T5.15.15.15.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.20.20.20">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.16.16.16.1"><math alttext="1\mathrm{~{}B}" class="ltx_Math" display="inline" id="A1.T5.16.16.16.1.m1.1"><semantics id="A1.T5.16.16.16.1.m1.1a"><mrow id="A1.T5.16.16.16.1.m1.1.1" xref="A1.T5.16.16.16.1.m1.1.1.cmml"><mn id="A1.T5.16.16.16.1.m1.1.1.2" mathsize="90%" xref="A1.T5.16.16.16.1.m1.1.1.2.cmml">1</mn><mo id="A1.T5.16.16.16.1.m1.1.1.1" lspace="0.300em" xref="A1.T5.16.16.16.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T5.16.16.16.1.m1.1.1.3" mathsize="90%" mathvariant="normal" xref="A1.T5.16.16.16.1.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.16.16.16.1.m1.1b"><apply id="A1.T5.16.16.16.1.m1.1.1.cmml" xref="A1.T5.16.16.16.1.m1.1.1"><times id="A1.T5.16.16.16.1.m1.1.1.1.cmml" xref="A1.T5.16.16.16.1.m1.1.1.1"></times><cn id="A1.T5.16.16.16.1.m1.1.1.2.cmml" type="integer" xref="A1.T5.16.16.16.1.m1.1.1.2">1</cn><ci id="A1.T5.16.16.16.1.m1.1.1.3.cmml" xref="A1.T5.16.16.16.1.m1.1.1.3">B</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.16.16.16.1.m1.1c">1\mathrm{~{}B}</annotation><annotation encoding="application/x-llamapun" id="A1.T5.16.16.16.1.m1.1d">1 roman_B</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.17.17.17.2"><math alttext="2048" class="ltx_Math" display="inline" id="A1.T5.17.17.17.2.m1.1"><semantics id="A1.T5.17.17.17.2.m1.1a"><mn id="A1.T5.17.17.17.2.m1.1.1" mathsize="90%" xref="A1.T5.17.17.17.2.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A1.T5.17.17.17.2.m1.1b"><cn id="A1.T5.17.17.17.2.m1.1.1.cmml" type="integer" xref="A1.T5.17.17.17.2.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.17.17.17.2.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A1.T5.17.17.17.2.m1.1d">2048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.18.18.18.3"><math alttext="5461" class="ltx_Math" display="inline" id="A1.T5.18.18.18.3.m1.1"><semantics id="A1.T5.18.18.18.3.m1.1a"><mn id="A1.T5.18.18.18.3.m1.1.1" mathsize="90%" xref="A1.T5.18.18.18.3.m1.1.1.cmml">5461</mn><annotation-xml encoding="MathML-Content" id="A1.T5.18.18.18.3.m1.1b"><cn id="A1.T5.18.18.18.3.m1.1.1.cmml" type="integer" xref="A1.T5.18.18.18.3.m1.1.1">5461</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.18.18.18.3.m1.1c">5461</annotation><annotation encoding="application/x-llamapun" id="A1.T5.18.18.18.3.m1.1d">5461</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.19.19.19.4"><math alttext="24" class="ltx_Math" display="inline" id="A1.T5.19.19.19.4.m1.1"><semantics id="A1.T5.19.19.19.4.m1.1a"><mn id="A1.T5.19.19.19.4.m1.1.1" mathsize="90%" xref="A1.T5.19.19.19.4.m1.1.1.cmml">24</mn><annotation-xml encoding="MathML-Content" id="A1.T5.19.19.19.4.m1.1b"><cn id="A1.T5.19.19.19.4.m1.1.1.cmml" type="integer" xref="A1.T5.19.19.19.4.m1.1.1">24</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.19.19.19.4.m1.1c">24</annotation><annotation encoding="application/x-llamapun" id="A1.T5.19.19.19.4.m1.1d">24</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.20.20.20.5"><math alttext="32" class="ltx_Math" display="inline" id="A1.T5.20.20.20.5.m1.1"><semantics id="A1.T5.20.20.20.5.m1.1a"><mn id="A1.T5.20.20.20.5.m1.1.1" mathsize="90%" xref="A1.T5.20.20.20.5.m1.1.1.cmml">32</mn><annotation-xml encoding="MathML-Content" id="A1.T5.20.20.20.5.m1.1b"><cn id="A1.T5.20.20.20.5.m1.1.1.cmml" type="integer" xref="A1.T5.20.20.20.5.m1.1.1">32</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.20.20.20.5.m1.1c">32</annotation><annotation encoding="application/x-llamapun" id="A1.T5.20.20.20.5.m1.1d">32</annotation></semantics></math></td>
<td class="ltx_td ltx_border_bb" id="A1.T5.20.20.20.6"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the configurations of the LLaMA language models used in the experiments described in the paper.  It shows the number of parameters, hidden layer size, intermediate layer size, number of attention heads, and number of layers for each of the four LLaMA model sizes: 60M, 130M, 350M, and 1B.
> <details>
> <summary>read the caption</summary>
> Table 5: Configurations of LLaMA models used in this paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.22.22">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T6.3.3.3.4"><span class="ltx_text" id="A1.T6.3.3.3.4.1" style="font-size:90%;">Hyper-Parameters</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1">
<span class="ltx_text" id="A1.T6.1.1.1.1.1" style="font-size:90%;">LLaMA-</span><math alttext="130" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><mn id="A1.T6.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T6.1.1.1.1.m1.1.1.cmml">130</mn><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><cn id="A1.T6.1.1.1.1.m1.1.1.cmml" type="integer" xref="A1.T6.1.1.1.1.m1.1.1">130</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">130</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">130</annotation></semantics></math><span class="ltx_text" id="A1.T6.1.1.1.1.2" style="font-size:90%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.2.2.2.2">
<span class="ltx_text" id="A1.T6.2.2.2.2.1" style="font-size:90%;">LLaMA-</span><math alttext="350" class="ltx_Math" display="inline" id="A1.T6.2.2.2.2.m1.1"><semantics id="A1.T6.2.2.2.2.m1.1a"><mn id="A1.T6.2.2.2.2.m1.1.1" mathsize="90%" xref="A1.T6.2.2.2.2.m1.1.1.cmml">350</mn><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.2.m1.1b"><cn id="A1.T6.2.2.2.2.m1.1.1.cmml" type="integer" xref="A1.T6.2.2.2.2.m1.1.1">350</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.2.m1.1c">350</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.2.m1.1d">350</annotation></semantics></math><span class="ltx_text" id="A1.T6.2.2.2.2.2" style="font-size:90%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.3.3.3.3">
<span class="ltx_text" id="A1.T6.3.3.3.3.1" style="font-size:90%;">LLaMA-</span><math alttext="1" class="ltx_Math" display="inline" id="A1.T6.3.3.3.3.m1.1"><semantics id="A1.T6.3.3.3.3.m1.1a"><mn id="A1.T6.3.3.3.3.m1.1.1" mathsize="90%" xref="A1.T6.3.3.3.3.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.3.m1.1b"><cn id="A1.T6.3.3.3.3.m1.1.1.cmml" type="integer" xref="A1.T6.3.3.3.3.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.3.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.3.m1.1d">1</annotation></semantics></math><span class="ltx_text" id="A1.T6.3.3.3.3.2" style="font-size:90%;">B</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T6.6.6.6.4"><span class="ltx_text" id="A1.T6.6.6.6.4.1" style="font-size:90%;">LR</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.4.4.4.1"><math alttext="1e-3" class="ltx_Math" display="inline" id="A1.T6.4.4.4.1.m1.1"><semantics id="A1.T6.4.4.4.1.m1.1a"><mrow id="A1.T6.4.4.4.1.m1.1.1" xref="A1.T6.4.4.4.1.m1.1.1.cmml"><mrow id="A1.T6.4.4.4.1.m1.1.1.2" xref="A1.T6.4.4.4.1.m1.1.1.2.cmml"><mn id="A1.T6.4.4.4.1.m1.1.1.2.2" mathsize="90%" xref="A1.T6.4.4.4.1.m1.1.1.2.2.cmml">1</mn><mo id="A1.T6.4.4.4.1.m1.1.1.2.1" xref="A1.T6.4.4.4.1.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T6.4.4.4.1.m1.1.1.2.3" mathsize="90%" xref="A1.T6.4.4.4.1.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T6.4.4.4.1.m1.1.1.1" mathsize="90%" xref="A1.T6.4.4.4.1.m1.1.1.1.cmml">−</mo><mn id="A1.T6.4.4.4.1.m1.1.1.3" mathsize="90%" xref="A1.T6.4.4.4.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.1.m1.1b"><apply id="A1.T6.4.4.4.1.m1.1.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1"><minus id="A1.T6.4.4.4.1.m1.1.1.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1.1"></minus><apply id="A1.T6.4.4.4.1.m1.1.1.2.cmml" xref="A1.T6.4.4.4.1.m1.1.1.2"><times id="A1.T6.4.4.4.1.m1.1.1.2.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1.2.1"></times><cn id="A1.T6.4.4.4.1.m1.1.1.2.2.cmml" type="integer" xref="A1.T6.4.4.4.1.m1.1.1.2.2">1</cn><ci id="A1.T6.4.4.4.1.m1.1.1.2.3.cmml" xref="A1.T6.4.4.4.1.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T6.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="A1.T6.4.4.4.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.1.m1.1c">1e-3</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.1.m1.1d">1 italic_e - 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.5.2"><math alttext="4e-4" class="ltx_Math" display="inline" id="A1.T6.5.5.5.2.m1.1"><semantics id="A1.T6.5.5.5.2.m1.1a"><mrow id="A1.T6.5.5.5.2.m1.1.1" xref="A1.T6.5.5.5.2.m1.1.1.cmml"><mrow id="A1.T6.5.5.5.2.m1.1.1.2" xref="A1.T6.5.5.5.2.m1.1.1.2.cmml"><mn id="A1.T6.5.5.5.2.m1.1.1.2.2" mathsize="90%" xref="A1.T6.5.5.5.2.m1.1.1.2.2.cmml">4</mn><mo id="A1.T6.5.5.5.2.m1.1.1.2.1" xref="A1.T6.5.5.5.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T6.5.5.5.2.m1.1.1.2.3" mathsize="90%" xref="A1.T6.5.5.5.2.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T6.5.5.5.2.m1.1.1.1" mathsize="90%" xref="A1.T6.5.5.5.2.m1.1.1.1.cmml">−</mo><mn id="A1.T6.5.5.5.2.m1.1.1.3" mathsize="90%" xref="A1.T6.5.5.5.2.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.5.2.m1.1b"><apply id="A1.T6.5.5.5.2.m1.1.1.cmml" xref="A1.T6.5.5.5.2.m1.1.1"><minus id="A1.T6.5.5.5.2.m1.1.1.1.cmml" xref="A1.T6.5.5.5.2.m1.1.1.1"></minus><apply id="A1.T6.5.5.5.2.m1.1.1.2.cmml" xref="A1.T6.5.5.5.2.m1.1.1.2"><times id="A1.T6.5.5.5.2.m1.1.1.2.1.cmml" xref="A1.T6.5.5.5.2.m1.1.1.2.1"></times><cn id="A1.T6.5.5.5.2.m1.1.1.2.2.cmml" type="integer" xref="A1.T6.5.5.5.2.m1.1.1.2.2">4</cn><ci id="A1.T6.5.5.5.2.m1.1.1.2.3.cmml" xref="A1.T6.5.5.5.2.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T6.5.5.5.2.m1.1.1.3.cmml" type="integer" xref="A1.T6.5.5.5.2.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.5.2.m1.1c">4e-4</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.5.2.m1.1d">4 italic_e - 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.6.6.3"><math alttext="2e-4" class="ltx_Math" display="inline" id="A1.T6.6.6.6.3.m1.1"><semantics id="A1.T6.6.6.6.3.m1.1a"><mrow id="A1.T6.6.6.6.3.m1.1.1" xref="A1.T6.6.6.6.3.m1.1.1.cmml"><mrow id="A1.T6.6.6.6.3.m1.1.1.2" xref="A1.T6.6.6.6.3.m1.1.1.2.cmml"><mn id="A1.T6.6.6.6.3.m1.1.1.2.2" mathsize="90%" xref="A1.T6.6.6.6.3.m1.1.1.2.2.cmml">2</mn><mo id="A1.T6.6.6.6.3.m1.1.1.2.1" xref="A1.T6.6.6.6.3.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T6.6.6.6.3.m1.1.1.2.3" mathsize="90%" xref="A1.T6.6.6.6.3.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T6.6.6.6.3.m1.1.1.1" mathsize="90%" xref="A1.T6.6.6.6.3.m1.1.1.1.cmml">−</mo><mn id="A1.T6.6.6.6.3.m1.1.1.3" mathsize="90%" xref="A1.T6.6.6.6.3.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.6.3.m1.1b"><apply id="A1.T6.6.6.6.3.m1.1.1.cmml" xref="A1.T6.6.6.6.3.m1.1.1"><minus id="A1.T6.6.6.6.3.m1.1.1.1.cmml" xref="A1.T6.6.6.6.3.m1.1.1.1"></minus><apply id="A1.T6.6.6.6.3.m1.1.1.2.cmml" xref="A1.T6.6.6.6.3.m1.1.1.2"><times id="A1.T6.6.6.6.3.m1.1.1.2.1.cmml" xref="A1.T6.6.6.6.3.m1.1.1.2.1"></times><cn id="A1.T6.6.6.6.3.m1.1.1.2.2.cmml" type="integer" xref="A1.T6.6.6.6.3.m1.1.1.2.2">2</cn><ci id="A1.T6.6.6.6.3.m1.1.1.2.3.cmml" xref="A1.T6.6.6.6.3.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T6.6.6.6.3.m1.1.1.3.cmml" type="integer" xref="A1.T6.6.6.6.3.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.6.3.m1.1c">2e-4</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.6.3.m1.1d">2 italic_e - 4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T6.7.7.7.1"><math alttext="\Delta T" class="ltx_Math" display="inline" id="A1.T6.7.7.7.1.m1.1"><semantics id="A1.T6.7.7.7.1.m1.1a"><mrow id="A1.T6.7.7.7.1.m1.1.1" xref="A1.T6.7.7.7.1.m1.1.1.cmml"><mi id="A1.T6.7.7.7.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="A1.T6.7.7.7.1.m1.1.1.2.cmml">Δ</mi><mo id="A1.T6.7.7.7.1.m1.1.1.1" xref="A1.T6.7.7.7.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.7.7.7.1.m1.1.1.3" mathsize="90%" xref="A1.T6.7.7.7.1.m1.1.1.3.cmml">T</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.7.7.7.1.m1.1b"><apply id="A1.T6.7.7.7.1.m1.1.1.cmml" xref="A1.T6.7.7.7.1.m1.1.1"><times id="A1.T6.7.7.7.1.m1.1.1.1.cmml" xref="A1.T6.7.7.7.1.m1.1.1.1"></times><ci id="A1.T6.7.7.7.1.m1.1.1.2.cmml" xref="A1.T6.7.7.7.1.m1.1.1.2">Δ</ci><ci id="A1.T6.7.7.7.1.m1.1.1.3.cmml" xref="A1.T6.7.7.7.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.7.7.7.1.m1.1c">\Delta T</annotation><annotation encoding="application/x-llamapun" id="A1.T6.7.7.7.1.m1.1d">roman_Δ italic_T</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T6.8.8.8.2"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T6.8.8.8.2.m1.1"><semantics id="A1.T6.8.8.8.2.m1.1a"><mn id="A1.T6.8.8.8.2.m1.1.1" mathsize="90%" xref="A1.T6.8.8.8.2.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T6.8.8.8.2.m1.1b"><cn id="A1.T6.8.8.8.2.m1.1.1.cmml" type="integer" xref="A1.T6.8.8.8.2.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.8.8.8.2.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T6.8.8.8.2.m1.1d">1000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.9.9.9.3"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T6.9.9.9.3.m1.1"><semantics id="A1.T6.9.9.9.3.m1.1a"><mn id="A1.T6.9.9.9.3.m1.1.1" mathsize="90%" xref="A1.T6.9.9.9.3.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T6.9.9.9.3.m1.1b"><cn id="A1.T6.9.9.9.3.m1.1.1.cmml" type="integer" xref="A1.T6.9.9.9.3.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.9.9.9.3.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T6.9.9.9.3.m1.1d">1000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.10.10.10.4"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T6.10.10.10.4.m1.1"><semantics id="A1.T6.10.10.10.4.m1.1a"><mn id="A1.T6.10.10.10.4.m1.1.1" mathsize="90%" xref="A1.T6.10.10.10.4.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T6.10.10.10.4.m1.1b"><cn id="A1.T6.10.10.10.4.m1.1.1.cmml" type="integer" xref="A1.T6.10.10.10.4.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.10.10.10.4.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T6.10.10.10.4.m1.1d">1000</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.14.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T6.11.11.11.1"><math alttext="\gamma_{1}" class="ltx_Math" display="inline" id="A1.T6.11.11.11.1.m1.1"><semantics id="A1.T6.11.11.11.1.m1.1a"><msub id="A1.T6.11.11.11.1.m1.1.1" xref="A1.T6.11.11.11.1.m1.1.1.cmml"><mi id="A1.T6.11.11.11.1.m1.1.1.2" mathsize="90%" xref="A1.T6.11.11.11.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T6.11.11.11.1.m1.1.1.3" mathsize="90%" xref="A1.T6.11.11.11.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T6.11.11.11.1.m1.1b"><apply id="A1.T6.11.11.11.1.m1.1.1.cmml" xref="A1.T6.11.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.11.11.11.1.m1.1.1.1.cmml" xref="A1.T6.11.11.11.1.m1.1.1">subscript</csymbol><ci id="A1.T6.11.11.11.1.m1.1.1.2.cmml" xref="A1.T6.11.11.11.1.m1.1.1.2">𝛾</ci><cn id="A1.T6.11.11.11.1.m1.1.1.3.cmml" type="integer" xref="A1.T6.11.11.11.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.11.11.11.1.m1.1c">\gamma_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.11.11.11.1.m1.1d">italic_γ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T6.12.12.12.2"><math alttext="0.7" class="ltx_Math" display="inline" id="A1.T6.12.12.12.2.m1.1"><semantics id="A1.T6.12.12.12.2.m1.1a"><mn id="A1.T6.12.12.12.2.m1.1.1" mathsize="90%" xref="A1.T6.12.12.12.2.m1.1.1.cmml">0.7</mn><annotation-xml encoding="MathML-Content" id="A1.T6.12.12.12.2.m1.1b"><cn id="A1.T6.12.12.12.2.m1.1.1.cmml" type="float" xref="A1.T6.12.12.12.2.m1.1.1">0.7</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.12.12.12.2.m1.1c">0.7</annotation><annotation encoding="application/x-llamapun" id="A1.T6.12.12.12.2.m1.1d">0.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.13.13.13.3"><math alttext="0.7" class="ltx_Math" display="inline" id="A1.T6.13.13.13.3.m1.1"><semantics id="A1.T6.13.13.13.3.m1.1a"><mn id="A1.T6.13.13.13.3.m1.1.1" mathsize="90%" xref="A1.T6.13.13.13.3.m1.1.1.cmml">0.7</mn><annotation-xml encoding="MathML-Content" id="A1.T6.13.13.13.3.m1.1b"><cn id="A1.T6.13.13.13.3.m1.1.1.cmml" type="float" xref="A1.T6.13.13.13.3.m1.1.1">0.7</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.13.13.13.3.m1.1c">0.7</annotation><annotation encoding="application/x-llamapun" id="A1.T6.13.13.13.3.m1.1d">0.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.14.14.14.4"><math alttext="0.7" class="ltx_Math" display="inline" id="A1.T6.14.14.14.4.m1.1"><semantics id="A1.T6.14.14.14.4.m1.1a"><mn id="A1.T6.14.14.14.4.m1.1.1" mathsize="90%" xref="A1.T6.14.14.14.4.m1.1.1.cmml">0.7</mn><annotation-xml encoding="MathML-Content" id="A1.T6.14.14.14.4.m1.1b"><cn id="A1.T6.14.14.14.4.m1.1.1.cmml" type="float" xref="A1.T6.14.14.14.4.m1.1.1">0.7</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.14.14.14.4.m1.1c">0.7</annotation><annotation encoding="application/x-llamapun" id="A1.T6.14.14.14.4.m1.1d">0.7</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T6.15.15.15.1"><math alttext="\gamma_{2}" class="ltx_Math" display="inline" id="A1.T6.15.15.15.1.m1.1"><semantics id="A1.T6.15.15.15.1.m1.1a"><msub id="A1.T6.15.15.15.1.m1.1.1" xref="A1.T6.15.15.15.1.m1.1.1.cmml"><mi id="A1.T6.15.15.15.1.m1.1.1.2" mathsize="90%" xref="A1.T6.15.15.15.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T6.15.15.15.1.m1.1.1.3" mathsize="90%" xref="A1.T6.15.15.15.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T6.15.15.15.1.m1.1b"><apply id="A1.T6.15.15.15.1.m1.1.1.cmml" xref="A1.T6.15.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.15.15.15.1.m1.1.1.1.cmml" xref="A1.T6.15.15.15.1.m1.1.1">subscript</csymbol><ci id="A1.T6.15.15.15.1.m1.1.1.2.cmml" xref="A1.T6.15.15.15.1.m1.1.1.2">𝛾</ci><cn id="A1.T6.15.15.15.1.m1.1.1.3.cmml" type="integer" xref="A1.T6.15.15.15.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.15.15.15.1.m1.1c">\gamma_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.15.15.15.1.m1.1d">italic_γ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T6.16.16.16.2"><math alttext="0.9" class="ltx_Math" display="inline" id="A1.T6.16.16.16.2.m1.1"><semantics id="A1.T6.16.16.16.2.m1.1a"><mn id="A1.T6.16.16.16.2.m1.1.1" mathsize="90%" xref="A1.T6.16.16.16.2.m1.1.1.cmml">0.9</mn><annotation-xml encoding="MathML-Content" id="A1.T6.16.16.16.2.m1.1b"><cn id="A1.T6.16.16.16.2.m1.1.1.cmml" type="float" xref="A1.T6.16.16.16.2.m1.1.1">0.9</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.16.16.16.2.m1.1c">0.9</annotation><annotation encoding="application/x-llamapun" id="A1.T6.16.16.16.2.m1.1d">0.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.17.17.17.3"><math alttext="0.9" class="ltx_Math" display="inline" id="A1.T6.17.17.17.3.m1.1"><semantics id="A1.T6.17.17.17.3.m1.1a"><mn id="A1.T6.17.17.17.3.m1.1.1" mathsize="90%" xref="A1.T6.17.17.17.3.m1.1.1.cmml">0.9</mn><annotation-xml encoding="MathML-Content" id="A1.T6.17.17.17.3.m1.1b"><cn id="A1.T6.17.17.17.3.m1.1.1.cmml" type="float" xref="A1.T6.17.17.17.3.m1.1.1">0.9</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.17.17.17.3.m1.1c">0.9</annotation><annotation encoding="application/x-llamapun" id="A1.T6.17.17.17.3.m1.1d">0.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.18.18.18.4"><math alttext="0.9" class="ltx_Math" display="inline" id="A1.T6.18.18.18.4.m1.1"><semantics id="A1.T6.18.18.18.4.m1.1a"><mn id="A1.T6.18.18.18.4.m1.1.1" mathsize="90%" xref="A1.T6.18.18.18.4.m1.1.1.cmml">0.9</mn><annotation-xml encoding="MathML-Content" id="A1.T6.18.18.18.4.m1.1b"><cn id="A1.T6.18.18.18.4.m1.1.1.cmml" type="float" xref="A1.T6.18.18.18.4.m1.1.1">0.9</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.18.18.18.4.m1.1c">0.9</annotation><annotation encoding="application/x-llamapun" id="A1.T6.18.18.18.4.m1.1d">0.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.22.22.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T6.19.19.19.1"><math alttext="\gamma_{3}" class="ltx_Math" display="inline" id="A1.T6.19.19.19.1.m1.1"><semantics id="A1.T6.19.19.19.1.m1.1a"><msub id="A1.T6.19.19.19.1.m1.1.1" xref="A1.T6.19.19.19.1.m1.1.1.cmml"><mi id="A1.T6.19.19.19.1.m1.1.1.2" mathsize="90%" xref="A1.T6.19.19.19.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T6.19.19.19.1.m1.1.1.3" mathsize="90%" xref="A1.T6.19.19.19.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T6.19.19.19.1.m1.1b"><apply id="A1.T6.19.19.19.1.m1.1.1.cmml" xref="A1.T6.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T6.19.19.19.1.m1.1.1.1.cmml" xref="A1.T6.19.19.19.1.m1.1.1">subscript</csymbol><ci id="A1.T6.19.19.19.1.m1.1.1.2.cmml" xref="A1.T6.19.19.19.1.m1.1.1.2">𝛾</ci><cn id="A1.T6.19.19.19.1.m1.1.1.3.cmml" type="integer" xref="A1.T6.19.19.19.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.19.19.19.1.m1.1c">\gamma_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.19.19.19.1.m1.1d">italic_γ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.20.20.20.2"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T6.20.20.20.2.m1.1"><semantics id="A1.T6.20.20.20.2.m1.1a"><mn id="A1.T6.20.20.20.2.m1.1.1" mathsize="90%" xref="A1.T6.20.20.20.2.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T6.20.20.20.2.m1.1b"><cn id="A1.T6.20.20.20.2.m1.1.1.cmml" type="float" xref="A1.T6.20.20.20.2.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.20.20.20.2.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T6.20.20.20.2.m1.1d">0.999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.21.21.21.3"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T6.21.21.21.3.m1.1"><semantics id="A1.T6.21.21.21.3.m1.1a"><mn id="A1.T6.21.21.21.3.m1.1.1" mathsize="90%" xref="A1.T6.21.21.21.3.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T6.21.21.21.3.m1.1b"><cn id="A1.T6.21.21.21.3.m1.1.1.cmml" type="float" xref="A1.T6.21.21.21.3.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.21.21.21.3.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T6.21.21.21.3.m1.1d">0.999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.22.22.22.4"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T6.22.22.22.4.m1.1"><semantics id="A1.T6.22.22.22.4.m1.1a"><mn id="A1.T6.22.22.22.4.m1.1.1" mathsize="90%" xref="A1.T6.22.22.22.4.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T6.22.22.22.4.m1.1b"><cn id="A1.T6.22.22.22.4.m1.1.1.cmml" type="float" xref="A1.T6.22.22.22.4.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.22.22.22.4.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T6.22.22.22.4.m1.1d">0.999</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the Stable-SPAM optimizer during 4-bit pre-training experiments.  It shows the values for the learning rate (LR), momentum reset interval (ΔT), and the parameters (γ1, γ2, γ3) controlling the adaptive gradient normalization and clipping for three different LLaMA model sizes: 130M, 350M, and 1B parameters.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameters of Stable-SPAM for 4-bit pre-training experiments in this paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.28.28">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.4.4.4.5"><span class="ltx_text" id="A1.T7.4.4.4.5.1" style="font-size:90%;">Hyper-Parameters</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.1">
<span class="ltx_text" id="A1.T7.1.1.1.1.1" style="font-size:90%;">LLaMA-</span><math alttext="60" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><mn id="A1.T7.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T7.1.1.1.1.m1.1.1.cmml">60</mn><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><cn id="A1.T7.1.1.1.1.m1.1.1.cmml" type="integer" xref="A1.T7.1.1.1.1.m1.1.1">60</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">60</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">60</annotation></semantics></math><span class="ltx_text" id="A1.T7.1.1.1.1.2" style="font-size:90%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.2.2.2">
<span class="ltx_text" id="A1.T7.2.2.2.2.1" style="font-size:90%;">LLaMA-</span><math alttext="130" class="ltx_Math" display="inline" id="A1.T7.2.2.2.2.m1.1"><semantics id="A1.T7.2.2.2.2.m1.1a"><mn id="A1.T7.2.2.2.2.m1.1.1" mathsize="90%" xref="A1.T7.2.2.2.2.m1.1.1.cmml">130</mn><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.2.m1.1b"><cn id="A1.T7.2.2.2.2.m1.1.1.cmml" type="integer" xref="A1.T7.2.2.2.2.m1.1.1">130</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.2.m1.1c">130</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.2.m1.1d">130</annotation></semantics></math><span class="ltx_text" id="A1.T7.2.2.2.2.2" style="font-size:90%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.3.3.3.3">
<span class="ltx_text" id="A1.T7.3.3.3.3.1" style="font-size:90%;">LLaMA-</span><math alttext="350" class="ltx_Math" display="inline" id="A1.T7.3.3.3.3.m1.1"><semantics id="A1.T7.3.3.3.3.m1.1a"><mn id="A1.T7.3.3.3.3.m1.1.1" mathsize="90%" xref="A1.T7.3.3.3.3.m1.1.1.cmml">350</mn><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.3.m1.1b"><cn id="A1.T7.3.3.3.3.m1.1.1.cmml" type="integer" xref="A1.T7.3.3.3.3.m1.1.1">350</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.3.m1.1c">350</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.3.m1.1d">350</annotation></semantics></math><span class="ltx_text" id="A1.T7.3.3.3.3.2" style="font-size:90%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.4.4.4">
<span class="ltx_text" id="A1.T7.4.4.4.4.1" style="font-size:90%;">LLaMA-</span><math alttext="1" class="ltx_Math" display="inline" id="A1.T7.4.4.4.4.m1.1"><semantics id="A1.T7.4.4.4.4.m1.1a"><mn id="A1.T7.4.4.4.4.m1.1.1" mathsize="90%" xref="A1.T7.4.4.4.4.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.4.m1.1b"><cn id="A1.T7.4.4.4.4.m1.1.1.cmml" type="integer" xref="A1.T7.4.4.4.4.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.4.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.4.m1.1d">1</annotation></semantics></math><span class="ltx_text" id="A1.T7.4.4.4.4.2" style="font-size:90%;">B</span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T7.28.28.29.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="A1.T7.28.28.29.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="4" id="A1.T7.28.28.29.1.2"><span class="ltx_text" id="A1.T7.28.28.29.1.2.1" style="font-size:90%;">Standard Pretraining</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T7.8.8.8.5"><span class="ltx_text" id="A1.T7.8.8.8.5.1" style="font-size:90%;">LR</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.5.1"><math alttext="1e-3" class="ltx_Math" display="inline" id="A1.T7.5.5.5.1.m1.1"><semantics id="A1.T7.5.5.5.1.m1.1a"><mrow id="A1.T7.5.5.5.1.m1.1.1" xref="A1.T7.5.5.5.1.m1.1.1.cmml"><mrow id="A1.T7.5.5.5.1.m1.1.1.2" xref="A1.T7.5.5.5.1.m1.1.1.2.cmml"><mn id="A1.T7.5.5.5.1.m1.1.1.2.2" mathsize="90%" xref="A1.T7.5.5.5.1.m1.1.1.2.2.cmml">1</mn><mo id="A1.T7.5.5.5.1.m1.1.1.2.1" xref="A1.T7.5.5.5.1.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T7.5.5.5.1.m1.1.1.2.3" mathsize="90%" xref="A1.T7.5.5.5.1.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T7.5.5.5.1.m1.1.1.1" mathsize="90%" xref="A1.T7.5.5.5.1.m1.1.1.1.cmml">−</mo><mn id="A1.T7.5.5.5.1.m1.1.1.3" mathsize="90%" xref="A1.T7.5.5.5.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.5.1.m1.1b"><apply id="A1.T7.5.5.5.1.m1.1.1.cmml" xref="A1.T7.5.5.5.1.m1.1.1"><minus id="A1.T7.5.5.5.1.m1.1.1.1.cmml" xref="A1.T7.5.5.5.1.m1.1.1.1"></minus><apply id="A1.T7.5.5.5.1.m1.1.1.2.cmml" xref="A1.T7.5.5.5.1.m1.1.1.2"><times id="A1.T7.5.5.5.1.m1.1.1.2.1.cmml" xref="A1.T7.5.5.5.1.m1.1.1.2.1"></times><cn id="A1.T7.5.5.5.1.m1.1.1.2.2.cmml" type="integer" xref="A1.T7.5.5.5.1.m1.1.1.2.2">1</cn><ci id="A1.T7.5.5.5.1.m1.1.1.2.3.cmml" xref="A1.T7.5.5.5.1.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T7.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.5.5.5.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.5.1.m1.1c">1e-3</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.5.1.m1.1d">1 italic_e - 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.6.6.6.2"><math alttext="8e-4" class="ltx_Math" display="inline" id="A1.T7.6.6.6.2.m1.1"><semantics id="A1.T7.6.6.6.2.m1.1a"><mrow id="A1.T7.6.6.6.2.m1.1.1" xref="A1.T7.6.6.6.2.m1.1.1.cmml"><mrow id="A1.T7.6.6.6.2.m1.1.1.2" xref="A1.T7.6.6.6.2.m1.1.1.2.cmml"><mn id="A1.T7.6.6.6.2.m1.1.1.2.2" mathsize="90%" xref="A1.T7.6.6.6.2.m1.1.1.2.2.cmml">8</mn><mo id="A1.T7.6.6.6.2.m1.1.1.2.1" xref="A1.T7.6.6.6.2.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T7.6.6.6.2.m1.1.1.2.3" mathsize="90%" xref="A1.T7.6.6.6.2.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T7.6.6.6.2.m1.1.1.1" mathsize="90%" xref="A1.T7.6.6.6.2.m1.1.1.1.cmml">−</mo><mn id="A1.T7.6.6.6.2.m1.1.1.3" mathsize="90%" xref="A1.T7.6.6.6.2.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.6.2.m1.1b"><apply id="A1.T7.6.6.6.2.m1.1.1.cmml" xref="A1.T7.6.6.6.2.m1.1.1"><minus id="A1.T7.6.6.6.2.m1.1.1.1.cmml" xref="A1.T7.6.6.6.2.m1.1.1.1"></minus><apply id="A1.T7.6.6.6.2.m1.1.1.2.cmml" xref="A1.T7.6.6.6.2.m1.1.1.2"><times id="A1.T7.6.6.6.2.m1.1.1.2.1.cmml" xref="A1.T7.6.6.6.2.m1.1.1.2.1"></times><cn id="A1.T7.6.6.6.2.m1.1.1.2.2.cmml" type="integer" xref="A1.T7.6.6.6.2.m1.1.1.2.2">8</cn><ci id="A1.T7.6.6.6.2.m1.1.1.2.3.cmml" xref="A1.T7.6.6.6.2.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T7.6.6.6.2.m1.1.1.3.cmml" type="integer" xref="A1.T7.6.6.6.2.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.6.2.m1.1c">8e-4</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.6.2.m1.1d">8 italic_e - 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.7.7.3"><math alttext="4e-4" class="ltx_Math" display="inline" id="A1.T7.7.7.7.3.m1.1"><semantics id="A1.T7.7.7.7.3.m1.1a"><mrow id="A1.T7.7.7.7.3.m1.1.1" xref="A1.T7.7.7.7.3.m1.1.1.cmml"><mrow id="A1.T7.7.7.7.3.m1.1.1.2" xref="A1.T7.7.7.7.3.m1.1.1.2.cmml"><mn id="A1.T7.7.7.7.3.m1.1.1.2.2" mathsize="90%" xref="A1.T7.7.7.7.3.m1.1.1.2.2.cmml">4</mn><mo id="A1.T7.7.7.7.3.m1.1.1.2.1" xref="A1.T7.7.7.7.3.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T7.7.7.7.3.m1.1.1.2.3" mathsize="90%" xref="A1.T7.7.7.7.3.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T7.7.7.7.3.m1.1.1.1" mathsize="90%" xref="A1.T7.7.7.7.3.m1.1.1.1.cmml">−</mo><mn id="A1.T7.7.7.7.3.m1.1.1.3" mathsize="90%" xref="A1.T7.7.7.7.3.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.7.3.m1.1b"><apply id="A1.T7.7.7.7.3.m1.1.1.cmml" xref="A1.T7.7.7.7.3.m1.1.1"><minus id="A1.T7.7.7.7.3.m1.1.1.1.cmml" xref="A1.T7.7.7.7.3.m1.1.1.1"></minus><apply id="A1.T7.7.7.7.3.m1.1.1.2.cmml" xref="A1.T7.7.7.7.3.m1.1.1.2"><times id="A1.T7.7.7.7.3.m1.1.1.2.1.cmml" xref="A1.T7.7.7.7.3.m1.1.1.2.1"></times><cn id="A1.T7.7.7.7.3.m1.1.1.2.2.cmml" type="integer" xref="A1.T7.7.7.7.3.m1.1.1.2.2">4</cn><ci id="A1.T7.7.7.7.3.m1.1.1.2.3.cmml" xref="A1.T7.7.7.7.3.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T7.7.7.7.3.m1.1.1.3.cmml" type="integer" xref="A1.T7.7.7.7.3.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.7.3.m1.1c">4e-4</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.7.3.m1.1d">4 italic_e - 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.8.8.8.4"><math alttext="2e-4" class="ltx_Math" display="inline" id="A1.T7.8.8.8.4.m1.1"><semantics id="A1.T7.8.8.8.4.m1.1a"><mrow id="A1.T7.8.8.8.4.m1.1.1" xref="A1.T7.8.8.8.4.m1.1.1.cmml"><mrow id="A1.T7.8.8.8.4.m1.1.1.2" xref="A1.T7.8.8.8.4.m1.1.1.2.cmml"><mn id="A1.T7.8.8.8.4.m1.1.1.2.2" mathsize="90%" xref="A1.T7.8.8.8.4.m1.1.1.2.2.cmml">2</mn><mo id="A1.T7.8.8.8.4.m1.1.1.2.1" xref="A1.T7.8.8.8.4.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T7.8.8.8.4.m1.1.1.2.3" mathsize="90%" xref="A1.T7.8.8.8.4.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T7.8.8.8.4.m1.1.1.1" mathsize="90%" xref="A1.T7.8.8.8.4.m1.1.1.1.cmml">−</mo><mn id="A1.T7.8.8.8.4.m1.1.1.3" mathsize="90%" xref="A1.T7.8.8.8.4.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T7.8.8.8.4.m1.1b"><apply id="A1.T7.8.8.8.4.m1.1.1.cmml" xref="A1.T7.8.8.8.4.m1.1.1"><minus id="A1.T7.8.8.8.4.m1.1.1.1.cmml" xref="A1.T7.8.8.8.4.m1.1.1.1"></minus><apply id="A1.T7.8.8.8.4.m1.1.1.2.cmml" xref="A1.T7.8.8.8.4.m1.1.1.2"><times id="A1.T7.8.8.8.4.m1.1.1.2.1.cmml" xref="A1.T7.8.8.8.4.m1.1.1.2.1"></times><cn id="A1.T7.8.8.8.4.m1.1.1.2.2.cmml" type="integer" xref="A1.T7.8.8.8.4.m1.1.1.2.2">2</cn><ci id="A1.T7.8.8.8.4.m1.1.1.2.3.cmml" xref="A1.T7.8.8.8.4.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T7.8.8.8.4.m1.1.1.3.cmml" type="integer" xref="A1.T7.8.8.8.4.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.8.8.8.4.m1.1c">2e-4</annotation><annotation encoding="application/x-llamapun" id="A1.T7.8.8.8.4.m1.1d">2 italic_e - 4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.13.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.9.9.9.1"><math alttext="\Delta T" class="ltx_Math" display="inline" id="A1.T7.9.9.9.1.m1.1"><semantics id="A1.T7.9.9.9.1.m1.1a"><mrow id="A1.T7.9.9.9.1.m1.1.1" xref="A1.T7.9.9.9.1.m1.1.1.cmml"><mi id="A1.T7.9.9.9.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="A1.T7.9.9.9.1.m1.1.1.2.cmml">Δ</mi><mo id="A1.T7.9.9.9.1.m1.1.1.1" xref="A1.T7.9.9.9.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T7.9.9.9.1.m1.1.1.3" mathsize="90%" xref="A1.T7.9.9.9.1.m1.1.1.3.cmml">T</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T7.9.9.9.1.m1.1b"><apply id="A1.T7.9.9.9.1.m1.1.1.cmml" xref="A1.T7.9.9.9.1.m1.1.1"><times id="A1.T7.9.9.9.1.m1.1.1.1.cmml" xref="A1.T7.9.9.9.1.m1.1.1.1"></times><ci id="A1.T7.9.9.9.1.m1.1.1.2.cmml" xref="A1.T7.9.9.9.1.m1.1.1.2">Δ</ci><ci id="A1.T7.9.9.9.1.m1.1.1.3.cmml" xref="A1.T7.9.9.9.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.9.9.9.1.m1.1c">\Delta T</annotation><annotation encoding="application/x-llamapun" id="A1.T7.9.9.9.1.m1.1d">roman_Δ italic_T</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.10.10.10.2"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T7.10.10.10.2.m1.1"><semantics id="A1.T7.10.10.10.2.m1.1a"><mn id="A1.T7.10.10.10.2.m1.1.1" mathsize="90%" xref="A1.T7.10.10.10.2.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T7.10.10.10.2.m1.1b"><cn id="A1.T7.10.10.10.2.m1.1.1.cmml" type="integer" xref="A1.T7.10.10.10.2.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.10.10.10.2.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T7.10.10.10.2.m1.1d">1000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.11.3"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T7.11.11.11.3.m1.1"><semantics id="A1.T7.11.11.11.3.m1.1a"><mn id="A1.T7.11.11.11.3.m1.1.1" mathsize="90%" xref="A1.T7.11.11.11.3.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T7.11.11.11.3.m1.1b"><cn id="A1.T7.11.11.11.3.m1.1.1.cmml" type="integer" xref="A1.T7.11.11.11.3.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.11.11.11.3.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T7.11.11.11.3.m1.1d">1000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.12.12.12.4"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T7.12.12.12.4.m1.1"><semantics id="A1.T7.12.12.12.4.m1.1a"><mn id="A1.T7.12.12.12.4.m1.1.1" mathsize="90%" xref="A1.T7.12.12.12.4.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T7.12.12.12.4.m1.1b"><cn id="A1.T7.12.12.12.4.m1.1.1.cmml" type="integer" xref="A1.T7.12.12.12.4.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.12.12.12.4.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T7.12.12.12.4.m1.1d">1000</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.13.13.13.5"><math alttext="1000" class="ltx_Math" display="inline" id="A1.T7.13.13.13.5.m1.1"><semantics id="A1.T7.13.13.13.5.m1.1a"><mn id="A1.T7.13.13.13.5.m1.1.1" mathsize="90%" xref="A1.T7.13.13.13.5.m1.1.1.cmml">1000</mn><annotation-xml encoding="MathML-Content" id="A1.T7.13.13.13.5.m1.1b"><cn id="A1.T7.13.13.13.5.m1.1.1.cmml" type="integer" xref="A1.T7.13.13.13.5.m1.1.1">1000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.13.13.13.5.m1.1c">1000</annotation><annotation encoding="application/x-llamapun" id="A1.T7.13.13.13.5.m1.1d">1000</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.14.14.14.1"><math alttext="\gamma_{1}" class="ltx_Math" display="inline" id="A1.T7.14.14.14.1.m1.1"><semantics id="A1.T7.14.14.14.1.m1.1a"><msub id="A1.T7.14.14.14.1.m1.1.1" xref="A1.T7.14.14.14.1.m1.1.1.cmml"><mi id="A1.T7.14.14.14.1.m1.1.1.2" mathsize="90%" xref="A1.T7.14.14.14.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T7.14.14.14.1.m1.1.1.3" mathsize="90%" xref="A1.T7.14.14.14.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.14.14.14.1.m1.1b"><apply id="A1.T7.14.14.14.1.m1.1.1.cmml" xref="A1.T7.14.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.14.14.14.1.m1.1.1.1.cmml" xref="A1.T7.14.14.14.1.m1.1.1">subscript</csymbol><ci id="A1.T7.14.14.14.1.m1.1.1.2.cmml" xref="A1.T7.14.14.14.1.m1.1.1.2">𝛾</ci><cn id="A1.T7.14.14.14.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.14.14.14.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.14.14.14.1.m1.1c">\gamma_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.14.14.14.1.m1.1d">italic_γ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.15.15.15.2"><math alttext="0.85" class="ltx_Math" display="inline" id="A1.T7.15.15.15.2.m1.1"><semantics id="A1.T7.15.15.15.2.m1.1a"><mn id="A1.T7.15.15.15.2.m1.1.1" mathsize="90%" xref="A1.T7.15.15.15.2.m1.1.1.cmml">0.85</mn><annotation-xml encoding="MathML-Content" id="A1.T7.15.15.15.2.m1.1b"><cn id="A1.T7.15.15.15.2.m1.1.1.cmml" type="float" xref="A1.T7.15.15.15.2.m1.1.1">0.85</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.15.15.15.2.m1.1c">0.85</annotation><annotation encoding="application/x-llamapun" id="A1.T7.15.15.15.2.m1.1d">0.85</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.16.16.16.3"><math alttext="0.85" class="ltx_Math" display="inline" id="A1.T7.16.16.16.3.m1.1"><semantics id="A1.T7.16.16.16.3.m1.1a"><mn id="A1.T7.16.16.16.3.m1.1.1" mathsize="90%" xref="A1.T7.16.16.16.3.m1.1.1.cmml">0.85</mn><annotation-xml encoding="MathML-Content" id="A1.T7.16.16.16.3.m1.1b"><cn id="A1.T7.16.16.16.3.m1.1.1.cmml" type="float" xref="A1.T7.16.16.16.3.m1.1.1">0.85</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.16.16.16.3.m1.1c">0.85</annotation><annotation encoding="application/x-llamapun" id="A1.T7.16.16.16.3.m1.1d">0.85</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.17.17.17.4"><math alttext="0.85" class="ltx_Math" display="inline" id="A1.T7.17.17.17.4.m1.1"><semantics id="A1.T7.17.17.17.4.m1.1a"><mn id="A1.T7.17.17.17.4.m1.1.1" mathsize="90%" xref="A1.T7.17.17.17.4.m1.1.1.cmml">0.85</mn><annotation-xml encoding="MathML-Content" id="A1.T7.17.17.17.4.m1.1b"><cn id="A1.T7.17.17.17.4.m1.1.1.cmml" type="float" xref="A1.T7.17.17.17.4.m1.1.1">0.85</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.17.17.17.4.m1.1c">0.85</annotation><annotation encoding="application/x-llamapun" id="A1.T7.17.17.17.4.m1.1d">0.85</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.18.18.18.5"><math alttext="0.85" class="ltx_Math" display="inline" id="A1.T7.18.18.18.5.m1.1"><semantics id="A1.T7.18.18.18.5.m1.1a"><mn id="A1.T7.18.18.18.5.m1.1.1" mathsize="90%" xref="A1.T7.18.18.18.5.m1.1.1.cmml">0.85</mn><annotation-xml encoding="MathML-Content" id="A1.T7.18.18.18.5.m1.1b"><cn id="A1.T7.18.18.18.5.m1.1.1.cmml" type="float" xref="A1.T7.18.18.18.5.m1.1.1">0.85</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.18.18.18.5.m1.1c">0.85</annotation><annotation encoding="application/x-llamapun" id="A1.T7.18.18.18.5.m1.1d">0.85</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.23.23.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T7.19.19.19.1"><math alttext="\gamma_{2}" class="ltx_Math" display="inline" id="A1.T7.19.19.19.1.m1.1"><semantics id="A1.T7.19.19.19.1.m1.1a"><msub id="A1.T7.19.19.19.1.m1.1.1" xref="A1.T7.19.19.19.1.m1.1.1.cmml"><mi id="A1.T7.19.19.19.1.m1.1.1.2" mathsize="90%" xref="A1.T7.19.19.19.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T7.19.19.19.1.m1.1.1.3" mathsize="90%" xref="A1.T7.19.19.19.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.19.19.19.1.m1.1b"><apply id="A1.T7.19.19.19.1.m1.1.1.cmml" xref="A1.T7.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.19.19.19.1.m1.1.1.1.cmml" xref="A1.T7.19.19.19.1.m1.1.1">subscript</csymbol><ci id="A1.T7.19.19.19.1.m1.1.1.2.cmml" xref="A1.T7.19.19.19.1.m1.1.1.2">𝛾</ci><cn id="A1.T7.19.19.19.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.19.19.19.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.19.19.19.1.m1.1c">\gamma_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.19.19.19.1.m1.1d">italic_γ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="A1.T7.20.20.20.2"><math alttext="0.99999" class="ltx_Math" display="inline" id="A1.T7.20.20.20.2.m1.1"><semantics id="A1.T7.20.20.20.2.m1.1a"><mn id="A1.T7.20.20.20.2.m1.1.1" mathsize="90%" xref="A1.T7.20.20.20.2.m1.1.1.cmml">0.99999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.20.20.20.2.m1.1b"><cn id="A1.T7.20.20.20.2.m1.1.1.cmml" type="float" xref="A1.T7.20.20.20.2.m1.1.1">0.99999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.20.20.20.2.m1.1c">0.99999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.20.20.20.2.m1.1d">0.99999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.21.21.21.3"><math alttext="0.99999" class="ltx_Math" display="inline" id="A1.T7.21.21.21.3.m1.1"><semantics id="A1.T7.21.21.21.3.m1.1a"><mn id="A1.T7.21.21.21.3.m1.1.1" mathsize="90%" xref="A1.T7.21.21.21.3.m1.1.1.cmml">0.99999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.21.21.21.3.m1.1b"><cn id="A1.T7.21.21.21.3.m1.1.1.cmml" type="float" xref="A1.T7.21.21.21.3.m1.1.1">0.99999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.21.21.21.3.m1.1c">0.99999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.21.21.21.3.m1.1d">0.99999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.22.22.22.4"><math alttext="0.99999" class="ltx_Math" display="inline" id="A1.T7.22.22.22.4.m1.1"><semantics id="A1.T7.22.22.22.4.m1.1a"><mn id="A1.T7.22.22.22.4.m1.1.1" mathsize="90%" xref="A1.T7.22.22.22.4.m1.1.1.cmml">0.99999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.22.22.22.4.m1.1b"><cn id="A1.T7.22.22.22.4.m1.1.1.cmml" type="float" xref="A1.T7.22.22.22.4.m1.1.1">0.99999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.22.22.22.4.m1.1c">0.99999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.22.22.22.4.m1.1d">0.99999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T7.23.23.23.5"><math alttext="0.99999" class="ltx_Math" display="inline" id="A1.T7.23.23.23.5.m1.1"><semantics id="A1.T7.23.23.23.5.m1.1a"><mn id="A1.T7.23.23.23.5.m1.1.1" mathsize="90%" xref="A1.T7.23.23.23.5.m1.1.1.cmml">0.99999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.23.23.23.5.m1.1b"><cn id="A1.T7.23.23.23.5.m1.1.1.cmml" type="float" xref="A1.T7.23.23.23.5.m1.1.1">0.99999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.23.23.23.5.m1.1c">0.99999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.23.23.23.5.m1.1d">0.99999</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.28.28.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T7.24.24.24.1"><math alttext="\gamma_{3}" class="ltx_Math" display="inline" id="A1.T7.24.24.24.1.m1.1"><semantics id="A1.T7.24.24.24.1.m1.1a"><msub id="A1.T7.24.24.24.1.m1.1.1" xref="A1.T7.24.24.24.1.m1.1.1.cmml"><mi id="A1.T7.24.24.24.1.m1.1.1.2" mathsize="90%" xref="A1.T7.24.24.24.1.m1.1.1.2.cmml">γ</mi><mn id="A1.T7.24.24.24.1.m1.1.1.3" mathsize="90%" xref="A1.T7.24.24.24.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T7.24.24.24.1.m1.1b"><apply id="A1.T7.24.24.24.1.m1.1.1.cmml" xref="A1.T7.24.24.24.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T7.24.24.24.1.m1.1.1.1.cmml" xref="A1.T7.24.24.24.1.m1.1.1">subscript</csymbol><ci id="A1.T7.24.24.24.1.m1.1.1.2.cmml" xref="A1.T7.24.24.24.1.m1.1.1.2">𝛾</ci><cn id="A1.T7.24.24.24.1.m1.1.1.3.cmml" type="integer" xref="A1.T7.24.24.24.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.24.24.24.1.m1.1c">\gamma_{3}</annotation><annotation encoding="application/x-llamapun" id="A1.T7.24.24.24.1.m1.1d">italic_γ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.25.25.25.2"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T7.25.25.25.2.m1.1"><semantics id="A1.T7.25.25.25.2.m1.1a"><mn id="A1.T7.25.25.25.2.m1.1.1" mathsize="90%" xref="A1.T7.25.25.25.2.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.25.25.25.2.m1.1b"><cn id="A1.T7.25.25.25.2.m1.1.1.cmml" type="float" xref="A1.T7.25.25.25.2.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.25.25.25.2.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.25.25.25.2.m1.1d">0.999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.26.26.26.3"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T7.26.26.26.3.m1.1"><semantics id="A1.T7.26.26.26.3.m1.1a"><mn id="A1.T7.26.26.26.3.m1.1.1" mathsize="90%" xref="A1.T7.26.26.26.3.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.26.26.26.3.m1.1b"><cn id="A1.T7.26.26.26.3.m1.1.1.cmml" type="float" xref="A1.T7.26.26.26.3.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.26.26.26.3.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.26.26.26.3.m1.1d">0.999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.27.27.27.4"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T7.27.27.27.4.m1.1"><semantics id="A1.T7.27.27.27.4.m1.1a"><mn id="A1.T7.27.27.27.4.m1.1.1" mathsize="90%" xref="A1.T7.27.27.27.4.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.27.27.27.4.m1.1b"><cn id="A1.T7.27.27.27.4.m1.1.1.cmml" type="float" xref="A1.T7.27.27.27.4.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.27.27.27.4.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.27.27.27.4.m1.1d">0.999</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.28.28.28.5"><math alttext="0.999" class="ltx_Math" display="inline" id="A1.T7.28.28.28.5.m1.1"><semantics id="A1.T7.28.28.28.5.m1.1a"><mn id="A1.T7.28.28.28.5.m1.1.1" mathsize="90%" xref="A1.T7.28.28.28.5.m1.1.1.cmml">0.999</mn><annotation-xml encoding="MathML-Content" id="A1.T7.28.28.28.5.m1.1b"><cn id="A1.T7.28.28.28.5.m1.1.1.cmml" type="float" xref="A1.T7.28.28.28.5.m1.1.1">0.999</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.28.28.28.5.m1.1c">0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T7.28.28.28.5.m1.1d">0.999</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the Stable-SPAM optimizer on large language models (LLMs) using BF16 precision.  It includes the learning rate (LR), momentum reset interval (ΔT), momentum coefficients (γ1, γ2), and the adaptive clipping threshold coefficient (γ3) for different LLaMA model sizes (60M, 130M, 350M, 1B parameters).  These values were tuned for optimal performance in the BF16 pre-training setting.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyperparameters of Stable-SPAM for BF6 pre-training experiments in this paper.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.17055/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17055/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}